.class public Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 291
    return-void
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 295
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 302
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 305
    return-void
.end method
