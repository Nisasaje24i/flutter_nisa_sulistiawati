const variabelGlobal = 'Hello, world!';
void main() {
  const localVariabel = 'Hello, main';

  if (2 > 1) {
    const insideIf = 'Hello, anybody';
    print(variabelGlobal);
    print(localVariabel);
    print(insideIf);
  }
  print(variabelGlobal);
  print(localVariabel);
}
