.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;
.super Landroid/media/tv/ad/ITvAdServiceCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    .line 3773
    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;-><init>()V

    .line 3774
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 3775
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;->mUserId:I

    return-void
.end method
