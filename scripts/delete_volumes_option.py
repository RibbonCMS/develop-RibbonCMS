import argparse
import yaml


def delete_volumes_option(input_file: str, output_file: str) -> None:
    # ファイルの読み込み
    with open(input_file, 'r') as file:
        data = yaml.safe_load(file)

    # 'volumes' 項目を削除
    if 'services' in data:
        for service in data['services']:
            if 'volumes' in data['services'][service]:
                del data['services'][service]['volumes']

    # 結果をファイルに書き出す
    with open(output_file, 'w') as file:
        yaml.dump(data, file, default_flow_style=False)


if __name__ == "__main__":
    # コマンドライン引数の設定
    parser = argparse.ArgumentParser(description="Remove volumes from YAML file.")
    parser.add_argument("input_file", help="Path to the input docker-compose.yml file.")
    parser.add_argument("output_file", help="Path to the output docker-compose.yml file.")
    args = parser.parse_args()

    delete_volumes_option(args.input_file, args.output_file)

    print("Done.")
