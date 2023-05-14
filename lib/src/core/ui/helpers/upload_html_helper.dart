import 'dart:html';

import 'package:flutter/services.dart';

typedef UploadCallBack = void Function(Uint8List file, String fileName);

class UploadHtmlHelper {
  // Método para iniciar o procceso de upload;
  void startUpload(UploadCallBack callback) {
    final uploadInput = FileUploadInputElement(); // Cria elemento do tipo upload;
    uploadInput.click(); // Abre a janela p/ seleção de arquivos;

    // Fica escutando a seleção até o usuário selecionar o arquivo;
    uploadInput.onChange.listen((_) {
      handleFileUpload(uploadInput, callback);
    });
  }

  // Método para lidar com o arquivo selecionado;
  void handleFileUpload(FileUploadInputElement uploadInput, UploadCallBack callback) {
    final List<File>? files = uploadInput.files; // Obtém a lista de arquivos selecionados;

    // Verifica se a lista não é nula e não está vazia;
    if (files != null && files.isNotEmpty) {
      final file = files.first; // Obtém o primeiro arquivo da lista;
      final reader = FileReader(); // Cria objeto para ler o conteúdo do arquivo;
      reader.readAsArrayBuffer(file); // Le o conteúdo do arquivo;

      reader.onLoadEnd.listen((_) {

        // Depois da leitura concluída, converte o resultado em um Uint8List;
        final bytes = Uint8List.fromList(reader.result as List<int>);
        
        callback(bytes, file.name); // Chama a função pasasndo os bytes do arquivo e seu nome;
      });
    }
  }
}
