module.exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: "chegaron las pipsas",
        input: event,
      },
      null,
      2
    ),
  };
};
