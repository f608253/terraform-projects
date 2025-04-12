exports.helloworldtf = (req, res) => {
let message = req.query.message || req.body.message || 'Hello World! from Terraform script';
res.status(200).send(message);
}