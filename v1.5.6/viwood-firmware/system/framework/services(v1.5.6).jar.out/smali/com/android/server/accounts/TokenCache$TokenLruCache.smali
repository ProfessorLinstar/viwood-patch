.class public Lcom/android/server/accounts/TokenCache$TokenLruCache;
.super Landroid/util/LruCache;
.source "TokenCache.java"


# instance fields
.field public mAccountEvictors:Ljava/util/HashMap;

.field public mTokenEvictors:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0xfa00

    .line 111
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public entryRemoved(ZLcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;Lcom/android/server/accounts/TokenCache$Value;)V
    .locals 0

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    new-instance p1, Landroid/util/Pair;

    iget-object p2, p2, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    :cond_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/android/server/accounts/TokenCache$Key;

    check-cast p3, Lcom/android/server/accounts/TokenCache$Value;

    check-cast p4, Lcom/android/server/accounts/TokenCache$Value;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->entryRemoved(ZLcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;Lcom/android/server/accounts/TokenCache$Value;)V

    return-void
.end method

.method public evict(Landroid/accounts/Account;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    :cond_0
    return-void
.end method

.method public evict(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    :cond_0
    return-void
.end method

.method public putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V
    .locals 3

    .line 136
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    .line 141
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->add(Lcom/android/server/accounts/TokenCache$Key;)V

    .line 142
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    .line 149
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->add(Lcom/android/server/accounts/TokenCache$Key;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sizeOf(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)I
    .locals 0

    .line 116
    iget-object p0, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 82
    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->sizeOf(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)I

    move-result p0

    return p0
.end method
