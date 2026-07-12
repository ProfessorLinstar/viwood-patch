.class public Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;
.super Landroid/database/ContentObserver;
.source "WindowMagnificationPromptController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Landroid/os/Handler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 79
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->onPromptSettingsValueChanged()V

    return-void
.end method
