.class public final synthetic Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStarter;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivityStarter;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivityStarter;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityStarter;->$r8$lambda$H3lQoP9Hv1sZW91Eki200I_lwhE(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method
