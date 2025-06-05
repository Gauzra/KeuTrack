exports.handler = async function(event, context) {
    return {
        statusCode: 200,
        body: JSON.stringify({
            GOOGLE_CLIENT_ID: process.env.GOOGLE_CLIENT_ID
        })
    };
}; 