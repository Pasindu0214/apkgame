.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite$1;
.super Ljava/lang/Object;
.source "DM200Sprite.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite;->zap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM200Sprite;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;->onZapComplete()V

    return-void
.end method
