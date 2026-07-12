.class public abstract Lcom/android/server/net/NetworkPolicyManagerInternal;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateBlockedReasonsWithProcState(II)I
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getAllowedReasonsForProcState(I)I

    move-result p1

    .line 106
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
.end method

.method public abstract onAdminDataAvailable()V
.end method

.method public abstract onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V
.end method

.method public abstract resetUserState(I)V
.end method

.method public abstract setAppIdleWhitelist(IZ)V
.end method

.method public abstract setLowPowerStandbyActive(Z)V
.end method

.method public abstract setLowPowerStandbyAllowlist([I)V
.end method

.method public abstract setMeteredRestrictedPackages(Ljava/util/Set;I)V
.end method

.method public abstract setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
.end method
