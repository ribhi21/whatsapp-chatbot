const mysql = require('mysql2/promise');

const createConnection = async () => {
	return await mysql.createConnection({
		host:'localhost',
		user:'root',
		password:'',
		database:'wa_api'
	});
}

const getPertanyaan = async (keyword,no_hp) => {
	const connection = await createConnection();
	if(keyword=="0"){
		const [cekStatusUser] = await connection.execute('SELECT * FROM wa_user WHERE no_hp = ?', [no_hp]);
		 const [rowsWaSatu] = await connection.execute('SELECT * FROM wa_satu WHERE id=?', [cekStatusUser[0].id_last_chat]);
		

		console.log(cekStatusUser)
		connection.query('UPDATE `wa_user` SET `id_last_chat`=? WHERE `no_hp`=?', 
		[rowsWaSatu[0].id_root, cekStatusUser[0].no_hp],
  		(error, results) => {
     if (error) return res.json({ error: error });
     
     });
		 const [rows] = await connection.execute('SELECT * FROM wa_satu WHERE id=?', [rowsWaSatu[0].id_root]);
		if (rows.length > 0) return rows[0].jawaban;
	} else if(keyword=="99"){

		const [cekStatusUser] = await connection.execute('SELECT * FROM wa_user WHERE no_hp = ?', [no_hp]);
		
		connection.query('UPDATE `wa_user` SET `id_last_chat`=2 WHERE `no_hp`=?', 
		[cekStatusUser[0].no_hp],
  		(error, results) => {
     if (error) return res.json({ error: error });
     
     });
		 const [rows] = await connection.execute('SELECT * FROM wa_satu WHERE id=2');
		if (rows.length > 0) return rows[0].jawaban;
	
	} else if(keyword=="daftar co"){

		const [cekStatusUser] = await connection.execute('SELECT * FROM wa_user WHERE no_hp = ?', [no_hp]);
		
		connection.query('UPDATE `wa_user` SET `id_last_chat`=12 WHERE `no_hp`=?', 
		[cekStatusUser[0].no_hp],
  		(error, results) => {
     if (error) return res.json({ error: error });
     
     });
		 const [rows] = await connection.execute('SELECT * FROM wa_satu WHERE id=12');
		if (rows.length > 0) return rows[0].jawaban;
	
	}
	else{
		const [cekStatusUser] = await connection.execute('SELECT * FROM wa_user WHERE no_hp = ?', [no_hp]);
	// console.log(cekStatusUser)
	if (cekStatusUser.length > 0) {
		
     const [rows] = await connection.execute('SELECT * FROM wa_satu WHERE pertanyaan = ? AND id_root=?', [keyword,cekStatusUser[0].id_last_chat]);
 		if(rows.length > 0){
 			connection.query('DELETE FROM `wa_user` WHERE `no_hp`=?', 
		[no_hp],
  (error, results) => {
     if (error) return res.json({ error: error });
     });
		connection.query('INSERT INTO wa_user (no_hp, id_last_chat) VALUES (?,?)', 
		[no_hp, rows[0].id],
  (error, results) => {
     if (error) return res.json({ error: error });
     
     });
		if (rows.length > 0) return rows[0].jawaban;
	return false;
}else{
	const [greetings] = await connection.execute('SELECT * FROM wa_satu WHERE id = 1');
			var pertanyaanGreet=greetings[0].pertanyaan;
var temp=pertanyaanGreet.split(",")
var tanda=0;
for(i=0;i<temp.length;i++){
    if(temp[i]==keyword){
    	tanda+=1;
    }
}
if(tanda==1){
	return greetings[0].jawaban;
}else{
	return "keyword yang kamu masukkan salah \nsilahkan ulangi lagi";
}
	
}
     
	}else{
		const [rows] = await connection.execute('SELECT * FROM wa_satu WHERE pertanyaan = ?', [keyword]);
		connection.query('INSERT INTO wa_user (no_hp, id_last_chat) VALUES (?,1)', 
		[no_hp],
  (error, results) => {
     if (error) return res.json({ error: error });
     });
		if (rows.length > 0){
			return rows[0].jawaban;
		} else{
			const [greetings] = await connection.execute('SELECT * FROM wa_satu WHERE id = 1');
			var pertanyaanGreet=greetings[0].pertanyaan;
var temp=pertanyaanGreet.split(",")
var tanda=0;
for(i=0;i<temp.length;i++){
    if(temp[i]==keyword){
    	tanda+=1;
    }
}
if(tanda==1){
	return greetings[0].jawaban;
}else{
	return false;
}
		}
	
		}
	}	
	
}

module.exports = {
	createConnection,
	getPertanyaan
}