.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

.field public mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/media/tv/ad/TvAdServiceInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;Landroid/media/tv/ad/TvAdServiceInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mUid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;-><init>()V

    return-void
.end method
