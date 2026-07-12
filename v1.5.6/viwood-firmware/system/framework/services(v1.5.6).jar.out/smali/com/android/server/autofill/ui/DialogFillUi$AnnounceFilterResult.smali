.class public final Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "DialogFillUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Lcom/android/server/autofill/ui/DialogFillUi-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    return-void
.end method


# virtual methods
.method public post()V
    .locals 3

    .line 479
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->remove()V

    .line 480
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public remove()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040183

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "count"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmContext(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040184

    invoke-static {v0, v1, v2}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-static {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->-$$Nest$fgetmListView(Lcom/android/server/autofill/ui/DialogFillUi;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
