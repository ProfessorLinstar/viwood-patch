.class public interface abstract Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;
.super Ljava/lang/Object;
.source "HealthServiceWrapperHidl.java"


# virtual methods
.method public get()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 0

    .line 255
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    return-object p0
.end method
