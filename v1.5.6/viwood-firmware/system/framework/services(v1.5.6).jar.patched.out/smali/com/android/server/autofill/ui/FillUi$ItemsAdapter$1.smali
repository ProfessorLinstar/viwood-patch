.class public Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "FillUi.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;


# direct methods
.method public static synthetic $r8$lambda$cSWGi-IC5P3ZQdNhbkMK4A9sHwU(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z
    .locals 0

    .line 900
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .line 899
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {p0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmAllItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 900
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 901
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 902
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 903
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 904
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 911
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {p1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 912
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 913
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 915
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 916
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 918
    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-static {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->-$$Nest$fgetmFilteredItems(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 920
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {p1}, Lcom/android/server/autofill/ui/FillUi;->-$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/FillUi;)V

    .line 922
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
