.class public Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;
.super Ljava/lang/Object;
.source "SecureSettingsWrapper.java"

# interfaces
.implements Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;


# instance fields
.field public final mNonPersistentKeyValues:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 149
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return p2

    .line 151
    :cond_1
    monitor-exit v0

    return p2

    .line 152
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object p2, p0

    .line 129
    :cond_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 131
    :cond_1
    monitor-exit v0

    return-object p2

    .line 132
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
