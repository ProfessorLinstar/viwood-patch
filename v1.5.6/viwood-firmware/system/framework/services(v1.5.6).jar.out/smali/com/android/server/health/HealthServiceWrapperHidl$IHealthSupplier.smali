.class public interface abstract Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
.super Ljava/lang/Object;
.source "HealthServiceWrapperHidl.java"


# virtual methods
.method public get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;
    .locals 0

    const/4 p0, 0x1

    .line 265
    invoke-static {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->getService(Ljava/lang/String;Z)Landroid/hardware/health/V2_0/IHealth;

    move-result-object p0

    return-object p0
.end method
