.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public final mCallingFeatureId:Ljava/lang/String;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCheckedOptions:Landroid/app/ActivityOptions;

.field public final mClearOptionsAnimation:Ljava/lang/Runnable;

.field public final mIntent:Landroid/content/Intent;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mResolvedType:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingUid:I

    .line 206
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPid:I

    .line 207
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingUid:I

    .line 208
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingPid:I

    .line 209
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmUserId(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mUserId:I

    .line 210
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmIntent(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mIntent:Landroid/content/Intent;

    .line 211
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmResolveInfo(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 212
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmActivityInfo(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmResolvedType(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolvedType:Ljava/lang/String;

    .line 214
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPackage:Ljava/lang/String;

    .line 215
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmCallingFeatureId(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingFeatureId:Ljava/lang/String;

    .line 216
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 217
    invoke-static {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->-$$Nest$fgetmClearOptionsAnimation(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public getCallingFeatureId()Ljava/lang/String;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getCallingPid()I
    .locals 0

    .line 331
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPid:I

    return p0
.end method

.method public getCallingUid()I
    .locals 0

    .line 326
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingUid:I

    return p0
.end method

.method public getCheckedOptions()Landroid/app/ActivityOptions;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCheckedOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getClearOptionsAnimationRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getRealCallingPid()I
    .locals 0

    .line 341
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingPid:I

    return p0
.end method

.method public getRealCallingUid()I
    .locals 0

    .line 336
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingUid:I

    return p0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getResolvedType()Ljava/lang/String;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolvedType:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 346
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mUserId:I

    return p0
.end method
