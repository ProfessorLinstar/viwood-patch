.class public abstract Lcom/android/server/devicepolicy/CryptoTestHelper;
.super Ljava/lang/Object;
.source "CryptoTestHelper.java"


# direct methods
.method public static runAndLogSelfTest()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/android/server/devicepolicy/CryptoTestHelper;->runSelfTest()I

    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3346f

    invoke-static {v1, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method private static native runSelfTest()I
.end method
