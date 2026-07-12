.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/content/SyncManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/content/SyncManager;->$r8$lambda$93P3rL2HXSoOpBI2TxIvo2rM7ps(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
