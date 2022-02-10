fn from(buffer: Buffer) -> Vec<u8> {
    let mut slice = Buffer::allocate(buffer.len);
    let len = buffer.copy_to(&mut slice);
    unsafe {
        Vec::from_raw_parts(
        slice.as_mut_ptr(), len, slice.len())
    }
}