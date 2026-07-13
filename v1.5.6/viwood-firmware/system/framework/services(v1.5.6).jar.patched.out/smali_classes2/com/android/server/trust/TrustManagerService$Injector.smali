.class public Lcom/android/server/trust/TrustManagerService$Injector;
.super Ljava/lang/Object;
.source "TrustManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 308
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;
    .locals 0

    .line 304
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object p0

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 300
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
