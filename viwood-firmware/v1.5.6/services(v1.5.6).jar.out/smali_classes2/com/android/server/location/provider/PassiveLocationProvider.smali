.class public Lcom/android/server/location/provider/PassiveLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "PassiveLocationProvider.java"


# static fields
.field public static final PROPERTIES:Landroid/location/provider/ProviderProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/provider/PassiveLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    sget-object v1, Lcom/android/server/location/provider/PassiveLocationProvider;->PROPERTIES:Landroid/location/provider/ProviderProperties;

    .line 52
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 51
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setAllowed(Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .locals 0

    .line 68
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateLocation(Landroid/location/LocationResult;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method
