/// destroy

if buffer_md5(chunk_buffer, 0, buffer_get_size(chunk_buffer)) != md5 {
	buffer_save(chunk_buffer, file_name);
}
buffer_delete(chunk_buffer);