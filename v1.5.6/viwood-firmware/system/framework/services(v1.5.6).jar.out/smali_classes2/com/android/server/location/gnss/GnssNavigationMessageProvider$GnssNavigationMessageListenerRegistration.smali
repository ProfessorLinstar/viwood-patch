.class public Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssNavigationMessageProvider.java"


# direct methods
.method public static synthetic $r8$lambda$BoBEDBfPyR7gtZVaFDpFnnj87zQ(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-interface {p0, v0}, Landroid/location/IGnssNavigationMessageListener;->onStatusChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public onRegister()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onRegister()V

    .line 53
    new-instance v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method
