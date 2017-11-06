unit uLowFragmentationHeap;

interface

var
  SuccessfulSetLowFragmentationHeapCount: Integer = 0;
  FailedSetLowFragmentationHeapCount: Integer = 0;

implementation

uses
  JwaWinBase, JwaWinNT;

const
  HEAP_LFH = 2;

procedure SetLowFragmentationHeap;
var
  Heaps: array[0..1025] of THandle;
  HeapCount: Integer;
  i: Integer;
  HeapFragValue: Cardinal;
  Success: Boolean;
begin
  HeapFragValue:= HEAP_LFH;

  SuccessfulSetLowFragmentationHeapCount:= 0;
  FailedSetLowFragmentationHeapCount:= 0;

  for i:= Low(Heaps) to High(Heaps) do
    Heaps[i]:= 0;

  HeapCount:= GetProcessHeaps(1024, Heaps[0]);
  for i:= 0 to HeapCount - 1 do
    begin
      Success:= HeapSetInformation(Heaps[i], HeapCompatibilityInformation, @HeapFragValue, SizeOf(HeapFragValue));

      Inc(SuccessfulSetLowFragmentationHeapCount, Ord(Success));
      Inc(FailedSetLowFragmentationHeapCount, Ord(not Success));
    end;
end;

initialization
  SetLowFragmentationHeap;
end.
