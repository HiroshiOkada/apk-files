FROM alpine:latest

WORKDIR /root

ADD ./make_apk_list*.sh ./entrypoint.sh /

RUN chmod +x /make_apk_list*.sh /entrypoint.sh &&\
    /make_apk_list1.sh 

RUN /make_apk_list2.sh package_names0 &\
    /make_apk_list2.sh package_names1 &\
    /make_apk_list2.sh package_names2 &\
    /make_apk_list2.sh package_names3 &\
    /make_apk_list2.sh package_names4 &\
    wait

ENTRYPOINT ["/entrypoint.sh"]

