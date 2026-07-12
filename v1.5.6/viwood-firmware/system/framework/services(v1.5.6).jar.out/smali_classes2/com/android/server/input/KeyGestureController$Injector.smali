.class Lcom/android/server/input/KeyGestureController$Injector;
.super Ljava/lang/Object;
.source "KeyGestureController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityShortcutController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .locals 1

    .line 1531
    new-instance p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-object p0
.end method
