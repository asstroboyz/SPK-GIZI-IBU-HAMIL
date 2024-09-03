<?php

namespace App\Http\Resources;

use App\Http\Resources\Alternative\AlternativeDetail;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Result\CriteriaPriorityResource;

class AnalysisResultResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'code' => $this->code,
            'name' => $this->name,
            'priorities' => CriteriaPriorityResource::collection($this->priority->sortBy('criteria.code')),
            'details' => AlternativeDetail::collection($this->details),
            'total' => $this->priority->sum('value'),
        ];
    }
}
