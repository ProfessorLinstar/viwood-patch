.class public final Lcom/android/server/policy/DeviceStatePolicyImpl;
.super Lcom/android/server/devicestate/DeviceStatePolicy;
.source "DeviceStatePolicyImpl.java"


# instance fields
.field public final mProvider:Lcom/android/server/devicestate/DeviceStateProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy;-><init>(Landroid/content/Context;)V

    .line 38
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-void
.end method


# virtual methods
.method public configureDeviceForState(ILjava/lang/Runnable;)V
    .locals 0

    .line 47
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    invoke-interface {p0, p1, p2}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-object p0
.end method
