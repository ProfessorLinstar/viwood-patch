.class public Lcom/android/server/supervision/SupervisionService$Injector;
.super Ljava/lang/Object;
.source "SupervisionService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    .line 343
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 345
    :cond_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    .line 364
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 366
    :cond_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method
