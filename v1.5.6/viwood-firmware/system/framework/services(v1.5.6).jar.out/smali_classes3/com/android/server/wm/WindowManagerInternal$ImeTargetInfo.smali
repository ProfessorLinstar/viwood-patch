.class public Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# instance fields
.field public final focusedWindowName:Ljava/lang/String;

.field public final imeControlTargetName:Ljava/lang/String;

.field public final imeLayerTargetName:Ljava/lang/String;

.field public final imeSurfaceParentName:Ljava/lang/String;

.field public final requestWindowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    .line 995
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    .line 996
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    .line 997
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    .line 998
    iput-object p5, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeSurfaceParentName:Ljava/lang/String;

    return-void
.end method
