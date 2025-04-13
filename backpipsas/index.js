module.exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: "Llegaron las pipsas!!!!!!",
        input: event,
      },
      null,
      2
    ),
  };
};
