.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public mCheckedOptions:Landroid/app/ActivityOptions;

.field public mClearOptionsAnimation:Ljava/lang/Runnable;

.field public final mIntent:Landroid/content/Intent;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public mResolvedType:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityInfo(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingFeatureId(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingPackage(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingPid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallingUid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/app/ActivityOptions;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClearOptionsAnimation(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIntent(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/content/Intent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingPid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolveInfo(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolvedType(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolvedType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mUserId:I

    return p0
.end method

.method public constructor <init>(IIIIILandroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 242
    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    .line 251
    iput p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingUid:I

    .line 252
    iput p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPid:I

    .line 253
    iput p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingUid:I

    .line 254
    iput p4, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingPid:I

    .line 255
    iput p5, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mUserId:I

    .line 256
    iput-object p6, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mIntent:Landroid/content/Intent;

    .line 257
    iput-object p7, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 258
    iput-object p8, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .locals 1

    .line 269
    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;-><init>(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)V

    return-object v0
.end method

.method public setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckedOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public setClearOptionsAnimationRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolvedType:Ljava/lang/String;

    return-object p0
.end method
