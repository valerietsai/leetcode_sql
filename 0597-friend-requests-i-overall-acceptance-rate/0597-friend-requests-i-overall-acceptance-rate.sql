with req as (
    select distinct sender_id, send_to_id
    from FriendRequest
),
acc as (
    select distinct requester_id, accepter_id
    from RequestAccepted
)


select
    round(
        ifnull(
            (select count(*) from acc) /
            (select count(*) from req)
        ,0)
    ,2)
as accept_rate