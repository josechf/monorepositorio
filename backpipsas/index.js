module.exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: "llego la pizza",
        input: event,
      },
      null,
      2
    ),
  };
};
