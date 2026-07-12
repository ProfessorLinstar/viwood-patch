.class public interface abstract Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;
.super Ljava/lang/Object;
.source "HealthServiceWrapperAidl.java"


# virtual methods
.method public registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 0

    .line 65
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    return-void
.end method

.method public waitForDeclaredService(Ljava/lang/String;)Landroid/hardware/health/IHealth;
    .locals 0

    .line 60
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/health/IHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;

    move-result-object p0

    return-object p0
.end method
