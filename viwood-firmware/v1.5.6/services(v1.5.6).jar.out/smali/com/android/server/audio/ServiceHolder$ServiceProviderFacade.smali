.class public interface abstract Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;
.super Ljava/lang/Object;
.source "ServiceHolder.java"


# virtual methods
.method public abstract checkService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
.end method

.method public abstract waitForService(Ljava/lang/String;)Landroid/os/IBinder;
.end method
