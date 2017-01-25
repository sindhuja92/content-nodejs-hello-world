var request = require('supertest');
var should = require("should");

var app = require("../../app");

describe('Test helloworld routes', function() {
  before(function(done) {
    server = app.listen(done);
	});

  after(function() {
		server.close();
	});

  describe('Hello World API', function () {
    it('should call to GET /api/v1/helloworld', function(done) {
			function check(err, data) {
				var results = data.body;
        results.should.be.type('object');
        results.responce.should.equal('hello world')
				done(err);
			};

			request(server)
				.get('/api/v1/helloworld')
        .set('Accept', 'application/json')
				.expect(200, check);
		});
  });
});
