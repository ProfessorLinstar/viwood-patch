.class public final synthetic Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/WindowContainer$ConfigurationMerger;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    iput-object p2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final merge(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->$r8$lambda$SEP6O4-hPND0DFZooEDdxRo7q_8(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/WindowContainer;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method
