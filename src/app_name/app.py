# app_name/app.py

import argparse

def getArgs():
    parser = argparse.ArgumentParser(
            prog="app_name",
            description="Python App Template",
            epilog="Thanks for using %(prog)s! :)"
        )
    
    parser.add_argument("-s","--str", type = str, help="String argument")
    parser.add_argument("-i","--int", type = int, help="Integer argument")
    parser.add_argument("-f","--float", type = float, default=1.0,help="Float argument with default value of 1.0")
    parser.add_argument("-b","--bool", action="store_true", help="Boolean argument that set to true if set")

    return parser.parse_args()

def main():
    print("Hello Example Python Application!")
    args = getArgs()
    print(f"Parsed Args:\n{args}")

if __name__ == "__main__":
    main()