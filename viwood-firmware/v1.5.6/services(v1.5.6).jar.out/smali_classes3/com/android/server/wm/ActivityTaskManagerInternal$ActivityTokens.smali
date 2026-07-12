.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# instance fields
.field public final mActivityToken:Landroid/os/IBinder;

.field public final mAppThread:Landroid/app/IApplicationThread;

.field public final mAssistToken:Landroid/os/IBinder;

.field public final mShareableActivityToken:Landroid/os/IBinder;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 376
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    .line 377
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 378
    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    .line 379
    iput p6, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    return-void
.end method


# virtual methods
.method public getActivityToken()Landroid/os/IBinder;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getApplicationThread()Landroid/app/IApplicationThread;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getAssistToken()Landroid/os/IBinder;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 414
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    return p0
.end method
