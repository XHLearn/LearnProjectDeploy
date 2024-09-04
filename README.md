

# pre-commit hook
- pip install pre-commit
- pre-commit install
- pre-commit --version
- pre-commit run --all-files

# docker 指令
```shell

docker build -t=harbor.devops.narwal.com/xh-test/fastapi:latest .

docker push harbor.devops.narwal.com/xh-test/fastapi:latest

docker run -d -p 2356:1280 harbor.devops.narwal.com/xh-test/fastapi:latest

```