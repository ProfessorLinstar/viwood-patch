.class public Lcom/android/server/uri/UriPermission$PersistedTimeComparator;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission;)I
    .locals 2

    .line 373
    iget-wide p0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iget-wide v0, p2, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 370
    check-cast p1, Lcom/android/server/uri/UriPermission;

    check-cast p2, Lcom/android/server/uri/UriPermission;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;->compare(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission;)I

    move-result p0

    return p0
.end method
