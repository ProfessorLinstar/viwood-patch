.class public interface abstract Lcom/android/server/infra/ServiceNameResolver;
.super Ljava/lang/Object;
.source "ServiceNameResolver.java"


# virtual methods
.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getDefaultServiceName(I)Ljava/lang/String;
.end method

.method public abstract getDefaultServiceNameList(I)[Ljava/lang/String;
.end method

.method public abstract getServiceName(I)Ljava/lang/String;
.end method

.method public abstract getServiceNameList(I)[Ljava/lang/String;
.end method

.method public abstract isConfiguredInMultipleMode()Z
.end method

.method public abstract isDefaultServiceEnabled(I)Z
.end method

.method public abstract isTemporary(I)Z
.end method

.method public abstract resetTemporaryService(I)V
.end method

.method public abstract setDefaultServiceEnabled(IZ)Z
.end method

.method public abstract setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
.end method

.method public abstract setTemporaryService(ILjava/lang/String;I)V
.end method

.method public abstract setTemporaryServices(I[Ljava/lang/String;I)V
.end method
