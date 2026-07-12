.class public abstract Lcom/android/server/wm/DisplayAreaPolicy;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"


# instance fields
.field public final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-void
.end method


# virtual methods
.method public abstract findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;
.end method

.method public abstract getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
.end method

.method public abstract getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;
.end method

.method public abstract getWindowingArea()Lcom/android/server/wm/DisplayArea;
.end method
