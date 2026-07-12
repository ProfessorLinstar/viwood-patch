.class public Lcom/android/server/pm/InstantAppResolver$1;
.super Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
.source "InstantAppResolver.java"


# instance fields
.field public final synthetic val$computer:Lcom/android/server/pm/Computer;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

.field public final synthetic val$origIntent:Landroid/content/Intent;

.field public final synthetic val$requestObj:Landroid/content/pm/InstantAppRequest;

.field public final synthetic val$sanitizedIntent:Landroid/content/Intent;

.field public final synthetic val$token:Ljava/lang/String;

.field public final synthetic val$userManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$computer:Lcom/android/server/pm/Computer;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$userManager:Lcom/android/server/pm/UserManagerService;

    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iput-object p6, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    iput-object p7, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iput-object p8, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhaseTwoResolved(Ljava/util/List;J)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$computer:Lcom/android/server/pm/Computer;

    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$userManager:Lcom/android/server/pm/UserManagerService;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$origIntent:Landroid/content/Intent;

    .line 214
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v10, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .line 212
    invoke-static/range {v2 .. v10}, Lcom/android/server/pm/InstantAppResolver;->-$$Nest$smfilterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    :cond_0
    move-object v3, v0

    .line 224
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v1, p1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$sanitizedIntent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/InstantAppRequest;->callingFeatureId:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    iget-object v7, p1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v8, p1, Landroid/content/pm/InstantAppRequest;->userId:I

    iget-object p1, p1, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v9, p1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 237
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v1, v1, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v1, v1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x384

    move-wide v3, p2

    .line 240
    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/pm/InstantAppResolver;->-$$Nest$smlogMetrics(IJLjava/lang/String;I)V

    .line 243
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
