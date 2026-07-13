.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;->f$0:Z

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;->f$0:Z

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$sA-Y3_D_70aW1I0H-5RhTgIguXQ(ZI)V

    return-void
.end method
