.class final Ljava/nio/IntToByteBufferAdapter;
.super Ljava/nio/IntBuffer;
.source "IntToByteBufferAdapter.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Ljava/nio/IntBuffer;-><init>(I)V

    iput-object p1, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v0, p1, Ljava/nio/Buffer;->effectiveDirectAddress:I

    iput v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return-void
.end method

.method static asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/nio/IntToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/IntToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .locals 3

    new-instance v0, Ljava/nio/IntToByteBufferAdapter;

    iget-object v1, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/IntToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iput v1, v0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->mark:I

    iput v1, v0, Ljava/nio/Buffer;->mark:I

    iget-object v1, v0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    return-object p0
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .locals 4

    iget-object v2, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/nio/IntToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/IntToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    iget v2, p0, Ljava/nio/Buffer;->limit:I

    iput v2, v1, Ljava/nio/Buffer;->limit:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    iput v2, v1, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/Buffer;->mark:I

    iput v2, v1, Ljava/nio/Buffer;->mark:I

    return-object v1
.end method

.method public get()I
    .locals 3

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/Buffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/IntToByteBufferAdapter;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([III)V

    :goto_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/HeapByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/HeapByteBuffer;->get([III)V

    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected protectedArray()[I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedArrayOffset()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected protectedHasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .locals 3

    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/Buffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/IntToByteBufferAdapter;->checkIndex(I)V

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 2

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/Buffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/ReadWriteDirectByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;->put([III)V

    :goto_0
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ReadWriteHeapByteBuffer;->put([III)V

    goto :goto_0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .locals 4

    iget-object v2, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/Buffer;->limit:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/Buffer;->position:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/nio/IntToByteBufferAdapter;

    invoke-direct {v1, v0}, Ljava/nio/IntToByteBufferAdapter;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Ljava/nio/IntToByteBufferAdapter;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v1
.end method
