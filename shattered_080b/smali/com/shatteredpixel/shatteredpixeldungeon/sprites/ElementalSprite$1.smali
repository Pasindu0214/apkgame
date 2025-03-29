.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$1;
.super Ljava/lang/Object;
.source "ElementalSprite.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->zap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->zap()V

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
