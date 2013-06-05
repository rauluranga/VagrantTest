python-software-properties:
  pkg:
    - installed
    - order: 0

build-essential:
  pkg.installed

nodejs-ppa:
  cmd:
    - run
    - name: add-apt-repository -y ppa:chris-lea/node.js
    - unless: test -f /etc/apt/sources.list.d/chris-lea-node_js-{{ grains['oscodename'] }}.list

nodejs:
  pkg:
    - installed
    - names:
      - nodejs
      - npm
    - refresh: true
    - require:
      - cmd: nodejs-ppa

npminstall:
  cmd.run:
    - name: npm install
    - cwd: /vagrant/
    - require:
      - pkg: build-essential
      - pkg: nodejs
      - pkg: npm

startapp:
  cmd.run:
    - name: node app.js
    - cwd: /vagrant/
    - require:
      - cmd.run: npminstall