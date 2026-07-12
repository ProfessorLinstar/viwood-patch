.class public Lcom/android/server/utils/AnrTimer$1;
.super Ljava/lang/Object;
.source "AnrTimer.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 905
    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 902
    check-cast p1, Lcom/android/server/utils/AnrTimer;

    check-cast p2, Lcom/android/server/utils/AnrTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer$1;->compare(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer;)I

    move-result p0

    return p0
.end method
