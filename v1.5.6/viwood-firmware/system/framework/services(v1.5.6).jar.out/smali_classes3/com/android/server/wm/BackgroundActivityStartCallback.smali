.class public interface abstract Lcom/android/server/wm/BackgroundActivityStartCallback;
.super Ljava/lang/Object;
.source "BackgroundActivityStartCallback.java"


# static fields
.field public static final RESULT_FALSE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

.field public static final RESULT_TRUE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;-><init>(ZLandroid/os/IBinder;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartCallback;->RESULT_FALSE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    .line 29
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;-><init>(ZLandroid/os/IBinder;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartCallback;->RESULT_TRUE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    return-void
.end method


# virtual methods
.method public abstract canCloseSystemDialogs(Ljava/util/Collection;I)Z
.end method

.method public abstract isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;
.end method
