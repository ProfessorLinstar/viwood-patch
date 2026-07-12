.class public Lcom/android/server/wm/WindowContainer$1;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# instance fields
.field public final synthetic val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

.field public final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field public final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer$ConfigurationMerger;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 3754
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$1;->val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3758
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$1;->val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

    if-eqz v0, :cond_0

    .line 3759
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    .line 3760
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3759
    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/WindowContainer$ConfigurationMerger;->merge(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p1

    goto :goto_0

    .line 3761
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3762
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
