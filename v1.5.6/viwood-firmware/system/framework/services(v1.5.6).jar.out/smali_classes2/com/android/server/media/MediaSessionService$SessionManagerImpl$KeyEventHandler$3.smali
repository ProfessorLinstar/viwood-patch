.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public final synthetic val$asSystemService:Z

.field public final synthetic val$doubleTapOverridden:Z

.field public final synthetic val$keyEvent:Landroid/view/KeyEvent;

.field public final synthetic val$musicOnly:Z

.field public final synthetic val$needWakeLock:Z

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$singleTapOverridden:Z

.field public final synthetic val$stream:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;ZLjava/lang/String;IIZZLjava/lang/String;IZ)V
    .locals 0

    .line 3211
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$doubleTapOverridden:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iput-boolean p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$singleTapOverridden:Z

    iput-object p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iput-boolean p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iput-boolean p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iput-object p10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iput-boolean p12, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 3214
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->-$$Nest$mresetMultiTapTrackingLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V

    .line 3215
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$doubleTapOverridden:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3217
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$singleTapOverridden:Z

    if-nez v1, :cond_0

    .line 3221
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iget v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iget-boolean v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iget-object v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iget-boolean v12, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    invoke-static/range {v3 .. v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->-$$Nest$mdispatchDownAndUpKeyEventsLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 3223
    iget-object v13, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iget v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iget-boolean v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iget-object v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iget-boolean v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    move/from16 v22, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-static/range {v13 .. v22}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->-$$Nest$mdispatchDownAndUpKeyEventsLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    return-void

    .line 3218
    :cond_0
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    throw v2

    .line 3216
    :cond_1
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    throw v2
.end method
