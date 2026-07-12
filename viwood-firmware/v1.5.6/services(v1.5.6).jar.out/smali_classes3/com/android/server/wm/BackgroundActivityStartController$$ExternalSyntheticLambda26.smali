.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/StringJoiner;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;->f$0:Ljava/util/StringJoiner;

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;->f$0:Ljava/util/StringJoiner;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;->f$1:Ljava/util/function/Function;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->$r8$lambda$Oj55gCcC-ZmBa1qdBpRJyeEgmWc(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
