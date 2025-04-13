module.exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: "chegaron las pipsas blanca nieves",
        input: event,
      },
      null,
      2
    ),
  };
};
