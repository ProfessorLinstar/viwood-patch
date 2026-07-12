.class public Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public static synthetic $r8$lambda$34WAYhxRSFJiVL9c4FO-hJtWuT8(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->lambda$onReportNavigationMessage$1(Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f-SZ_rst97IBLhPC3S2XayaZh7U(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;)V
    .locals 0

    .line 121
    invoke-interface {p1, p0}, Landroid/location/IGnssNavigationMessageListener;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 63
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 64
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 67
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public bridge synthetic createRegistration(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Void;

    check-cast p3, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->createRegistration(Ljava/lang/Void;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    move-result-object p0

    return-object p0
.end method

.method public createRegistration(Ljava/lang/Void;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
    .locals 0

    .line 83
    new-instance p1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V

    return-object p1
.end method

.method public isSupported()Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isNavigationMessageCollectionSupported()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onReportNavigationMessage$1(Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 119
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 121
    new-instance p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssNavigationMessage;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onHalRestarted()V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    return-void
.end method

.method public onReportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    return-void
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startNavigationMessageCollection()Z

    move-result p0

    const-string p1, "GnssManager"

    if-eqz p0, :cond_1

    .line 90
    sget-boolean p0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz p0, :cond_0

    .line 91
    const-string/jumbo p0, "starting gnss navigation messages"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 95
    :cond_1
    const-string p0, "error starting gnss navigation messages"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterWithService()V
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopNavigationMessageCollection()Z

    move-result p0

    const-string v0, "GnssManager"

    if-eqz p0, :cond_1

    .line 103
    sget-boolean p0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz p0, :cond_0

    .line 104
    const-string/jumbo p0, "stopping gnss navigation messages"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 107
    :cond_1
    const-string p0, "error stopping gnss navigation messages"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
